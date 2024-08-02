let () =
  print_endline "Starting. . .\n";
  print_endline "This should succeed: ";
  Menhirjson.Main.loop "test.json" ();
  print_endline "This should fail: ";
  Menhirjson.Main.loop "fail.json" ()
;;
