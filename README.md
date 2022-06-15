# Minimal OpenGL application in Ocaml

A minimal program that creates an empty window without using GLUT.
Built with `dune`.

Requirements:

```
opam install tgls glfw-ocaml
```

Launch with:

```
dune exec opengl_minimal
```


Note the line in [the dune configuration](opengl_minimal/bin/dune):

```dune
(libraries opengl_minimal tgls tgls.tgl4 glfw-ocaml)
                               ^ this is important
```
