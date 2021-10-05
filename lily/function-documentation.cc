/*
  This file is part of LilyPond, the GNU music typesetter.

  Copyright (C) 2004--2021 Han-Wen Nienhuys <hanwen@xs4all.nl>

  LilyPond is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  LilyPond is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with LilyPond.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "std-string.hh"
#include "lily-guile.hh"
#include "warn.hh"

/* type predicates. */
#include "global-context.hh"
#include "input.hh"
#include "item.hh"
#include "music.hh"
#include "music-function.hh"
#include "paper-score.hh"
#include "performance.hh"
#include "protected-scm.hh"
#include "spanner.hh"
#include "stream-event.hh"
#include "transform.hh"
#include "unpure-pure-container.hh"

#include <cstring>
#include <map>

using std::map;
using std::string;

static Protected_scm doc_hash_table;

void
ly_check_name (const char *cxx, const char *scm_name)
{
  string mangle = mangle_cxx_identifier (cxx);
  if (mangle != scm_name)
    {
      programming_error ("wrong cxx name: " + mangle + ", " + cxx + ", " + scm_name);
    }
}

void
ly_add_function_documentation (SCM func,
                               const char *fname,
                               const char *varlist,
                               const char *doc)
{
  // doc is a null-terminated character string, so check if it is empty.
  if (*doc == 0)
    return;

  if (!doc_hash_table.is_bound ())
    doc_hash_table = scm_c_make_hash_table (59);

  string s = string (" - ") + "LilyPond procedure: " + fname + " " + varlist
             + "\n" + doc;

  scm_set_procedure_property_x (func, ly_symbol2scm ("documentation"),
                                ly_string2scm (s));
  SCM entry = scm_cons (ly_string2scm (varlist), ly_string2scm (doc));
  scm_hashq_set_x (doc_hash_table, ly_symbol2scm (fname), entry);
}

LY_DEFINE (ly_get_all_function_documentation, "ly:get-all-function-documentation",
           0, 0, 0, (),
           "Get a hash table with all LilyPond Scheme extension functions.")
{
  return doc_hash_table;
}

static map<const void *, string> type_names;

void
ly_internal_add_type_predicate (const void *pred, const char *name)
{
  type_names[pred] = std::string (name);
}

string
internal_predicate_to_typename (const void *pred)
{
  auto it = type_names.find (pred);
  if (it != type_names.end ())
    return it->second;

  programming_error ("Unknown type predicate");
  return "unknown type";
}

void
init_func_doc ()
{
  ly_add_type_predicate (is_scm<Direction>, "direction");
  ly_add_type_predicate (scm_is_real, "real number");
  ly_add_type_predicate (is_scm<Offset>, "pair of reals");
  ly_add_type_predicate (ly_is_port, "port");
  ly_add_type_predicate (ly_cheap_is_list, "list");
  ly_add_type_predicate (unsmob<Global_context>, "Global_context");
  ly_add_type_predicate (unsmob<Paper_score>, "Paper_score");
  ly_add_type_predicate (unsmob<Performance>, "Performance");
  ly_add_type_predicate (is_scm<Axis>, "axis");
  ly_add_type_predicate (is_number_pair, "number pair");
  ly_add_type_predicate (ly_is_list, "list");
  ly_add_type_predicate (ly_is_procedure, "procedure");
  ly_add_type_predicate (ly_is_symbol, "symbol");
  ly_add_type_predicate (scm_is_bool, "boolean");
  ly_add_type_predicate (scm_is_integer, "integer");
  ly_add_type_predicate (scm_is_number, "number");
  ly_add_type_predicate (scm_is_pair, "pair");
  ly_add_type_predicate (scm_is_rational, "rational");
  ly_add_type_predicate (scm_is_string, "string");
  ly_add_type_predicate (unsmob<Transform>, "coordinate transform");
  ly_add_type_predicate (scm_is_vector, "vector");
  ly_add_type_predicate (unsmob<Item>, "Item");
  ly_add_type_predicate (unsmob<Music>, "Music");
  ly_add_type_predicate (unsmob<Spanner>, "Spanner");
  ly_add_type_predicate (unsmob<Stream_event>, "Stream_event");
}

ADD_SCM_INIT_FUNC (func_doc, init_func_doc);
