package = "cltorch"
version = "scm-1"

source = {
   url = 'git+https://github.com/hughperkins/cltorch.git'
}

description = {
   summary = "OpenCL backend for Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/hughperkins/cltorch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
git clone --recursive git+https://github.com/hughperkins/cltorch.git && cd cltorch && cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE) -j$(getconf _NPROCESSORS_ONLN) install
]],
   install_command = "cd cltorch/build"
}
