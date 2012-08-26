
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(prefix)
prefix = $(DESTDIR)/usr
libdir = $(exec_prefix)/lib
datarootdir = $(prefix)/share
archdir = $(rubylibdir)/$(arch)
dvidir = $(docdir)
vendorlibdir = $(vendordir)/$(ruby_version)
libexecdir = $(prefix)/lib/ruby1.8
htmldir = $(docdir)
sitelibdir = $(sitedir)/$(ruby_version)
sitedir = $(DESTDIR)/usr/local/lib/site_ruby
bindir = $(exec_prefix)/bin
vendorarchdir = $(vendorlibdir)/$(sitearch)
oldincludedir = $(DESTDIR)/usr/include
localstatedir = $(DESTDIR)/var
sitearchdir = $(sitelibdir)/$(sitearch)
includedir = $(prefix)/include
datadir = $(datarootdir)
vendordir = $(libdir)/ruby/vendor_ruby
sharedstatedir = $(prefix)/com
mandir = $(prefix)/share/man
docdir = $(datarootdir)/doc/$(PACKAGE)
infodir = $(prefix)/share/info
sbindir = $(exec_prefix)/sbin
sysconfdir = $(DESTDIR)/etc
localedir = $(datarootdir)/locale
psdir = $(docdir)
pdfdir = $(docdir)
rubylibdir = $(libdir)/ruby/$(ruby_version)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = extconf.h
CFLAGS   =  -fPIC -fno-strict-aliasing -g -g -O2  -fPIC $(cflags) 
INCFLAGS = -I. -I. -I/usr/lib/ruby/1.8/i686-linux -I.
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  -D_FILE_OFFSET_BITS=64  -I/usr/include/postgresql
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -Wl,-Bsymbolic-functions -rdynamic -Wl,-export-dynamic -L/usr/lib
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby1.8
RUBY_SO_NAME = ruby1.8
arch = i686-linux
sitearch = i686-linux
ruby_version = 1.8
ruby = /usr/bin/ruby1.8
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lpq  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = pg_connection.c pg_result.c pg.c
OBJS = pg_connection.o pg_result.o pg.o
TARGET = pg_ext
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/tolik/rails_projects/sample_app/spork/ruby/1.8/gems/pg-0.14.0/lib$(target_prefix)
RUBYARCHDIR = /home/tolik/rails_projects/sample_app/spork/ruby/1.8/gems/pg-0.14.0/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h $(RUBY_EXTCONF_H)
