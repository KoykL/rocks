package = 'fs'
version = '0.3-0'

source = {
   url = 'git+https://github.com/clementfarabet/lua-fs-0.3.git',
   branch = 'master'
}

description = {
  summary = "File system toolbox",
  homepage = "https://github.com/clementfarabet/lua-fs-0.3"
}

dependencies = {
    'torch >= 7.0'
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
