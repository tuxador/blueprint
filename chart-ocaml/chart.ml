(* Chart -- Charts for OCaml and Gtk2

Author: Michael Grünewald
Date: Sun Jan  4 23:09:24 CET 2015

Blueprint (https://github.com/michipili/blueprint)
This file is part of Blueprint

Copyright © 2014–2015 Michael Grünewald

This file must be used under the terms of the CeCILL-B.
This source file is licensed as described in the file COPYING, which
you should have received as part of this distribution. The terms
are also available at
http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt *)

class chart () =
  let vbox = GPack.vbox () in
  let canvas = GnoCanvas.canvas ~packing:vbox#add () in
  object
    inherit GObj.widget vbox#as_widget
  end

let chart ?packing () =
  let answer = new chart () in
  ( match packing with
    | None -> ()
    | Some(p) -> p answer
  );
  answer