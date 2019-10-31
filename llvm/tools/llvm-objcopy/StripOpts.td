include "CommonOpts.td"

def output : JoinedOrSeparate<["-"], "o">, HelpText<"Write output to <file>">,
             MetaVarName<"<file>">;

  def NAME : Separate<["--"], name>;
  def NAME #_eq : Joined<["--"], name #"=">,
                  Alias<!cast<Separate>(NAME)>,
                  HelpText<help>;
}

def help : Flag<["--"], "help">;
def h : Flag<["-"], "h">, Alias<help>;

def allow_broken_links
    : Flag<["--"], "allow-broken-links">,
      HelpText<"Allow llvm-strip to remove sections even if it would leave "
               "invalid section references. The appropriate sh_link fields "
               "will be set to zero.">;

def enable_deterministic_archives
    : Flag<["--"], "enable-deterministic-archives">,
      HelpText<"Enable deterministic mode when stripping archives (use zero "
               "for UIDs, GIDs, and timestamps).">;
def D : Flag<["-"], "D">,
        Alias<enable_deterministic_archives>,
        HelpText<"Alias for --enable-deterministic-archives">;

def disable_deterministic_archives
    : Flag<["--"], "disable-deterministic-archives">,
      HelpText<"Disable deterministic mode when stripping archives (use real "
               "values for UIDs, GIDs, and timestamps).">;
def U : Flag<["-"], "U">,
        Alias<disable_deterministic_archives>,
        HelpText<"Alias for --disable-deterministic-archives">;

def output : JoinedOrSeparate<["-"], "o">, HelpText<"Write output to <file>">;

def preserve_dates : Flag<["--"], "preserve-dates">,
                     HelpText<"Preserve access and modification timestamps">;
def p : Flag<["-"], "p">, Alias<preserve_dates>;

def strip_all : Flag<["--"], "strip-all">,
                HelpText<"Remove non-allocated sections outside segments. "
                          ".gnu.warning* and .ARM.attribute sections are not "
                          "removed">;
def s : Flag<["-"], "s">, Alias<strip_all>;
def no_strip_all : Flag<["--"], "no-strip-all">,
                   HelpText<"Disable --strip-all">;

def d : Flag<["-"], "d">,
        Alias<strip_debug>,
        HelpText<"Alias for --strip-debug">;
def S : Flag<["-"], "S">,
        Alias<strip_debug>,
        HelpText<"Alias for --strip-debug">;
