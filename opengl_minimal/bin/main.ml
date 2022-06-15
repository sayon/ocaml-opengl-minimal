open Tgl4.Gl

let fps : int = 60

let main () =
  GLFW.init ();
  let windowTitle = "Window title" in
  let window = GLFW.createWindow
      ~width:800
      ~height:600
      ~title:windowTitle
      ?monitor:None ?share:None () in
  GLFW.makeContextCurrent ~window: (Some window) ;

  while (not (GLFW.windowShouldClose ~window:window)) do
    clear(Tgl4.Gl.color_buffer_bit);
    GLFW.swapBuffers ~window:window;
    GLFW.pollEvents ();
    Unix.sleepf ( 1.0 /. float_of_int fps) 
  done;
  GLFW.terminate ()


let _ = main ()
