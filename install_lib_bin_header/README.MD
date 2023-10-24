# Introduction
this example  base shared_library case

# purpose
install *.so to /usr/local/lib
install hello_app to /usr/local/bin
install test_conf to /usr/local/etc
install hello.h to /usr/local/include

# bash operation
mkdir buil
cd build
make
sudo make install

you gay could be check in
/usr/local/lib
/usr/local/bin
/usr/local/etc
/usr/local/include

# execute
## check PATH
if /usr/local/bin is not in you PATH, first add it
sw-208-17-225  yanxw  ⋯ > usr > local > include  echo $PATH
/home/yanxw/.local/bin:/home/yanxw/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

## check PATH
if /usr/local/bin is not in you PATH, first add it
sw-208-17-225  yanxw  ⋯ > usr > local > include  hello_app
hello_app: error while loading shared libraries: libhello_library.so: cannot open shared object file: No such file or directory

## check LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

hello_app could be success execute

# overriding the default install location

default install path is `/usr/local/`

exec in here:
`/home/yanxw/cmake_test/install_lib_bin_header/build`
type in cmd
```
make install DESTDIR=/home/yanxw/cmake_test/install_lib_bin_header/build
```
usr
└── local
	├── bin
	│   └── hello_app
	├── etc
	│   └── test.conf
	├── include
	│   └── hello.h
	└── lib
	└── libhello_library.so

# uninstall
dy default , cmake do not support make uninstall
```
sudo xargs rm < install_manifest.txt
```
