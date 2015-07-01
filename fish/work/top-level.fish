source ~/.config/fish/work/path.fish
set -x CR_AUTOCLOSE_OPT_OUT true

function bb
  brazil-build $argv
end

function bbap
  bb
  brazil-build apollo-pkg $argv
end

function bbc
  brazil-build clean $argv
end

function cbb
  clear;
  bb
end

function bbg
  brazil-build gdb $argv
end

function bbt
  brazil-build test $argv
end

function bbtp
  brazil-build test --pdb $argv
end

function bbs
  brazil-build server $argv
end

function bba
  bbc
  bb
  bbt
end

function bbr
  brazil-build release $argv
end

function bws
  brazil ws --sync --md $argv
end

function bwsr
  brazil ws --remove -p $argv
end

function bwsa
  brazil ws --use -p $argv
end

function bvs
  brazil ws --use -vs $argv
end

function bbtia
  brazil-build test-integration-assert $argv
end

function bbptc
  brazil-build print-testrun-classpath $argv
end

function sb
  ssh badamson.desktop.amazon.com $argv
end

function btpt
  /apollo/env/BrazilThirdPartyTool/bin/brazil-third-party-tool $argv
end

function bbf
  brazil-build format
end

function kp
  kinit -f $argv
end

function ap
  sudo /apollo/bin/runCommand -a Preactivate -e $argv
end

function aa
  sudo /apollo/bin/runCommand -a Activate -e $argv
end

function ad
  sudo /apollo/bin/runCommand -a Deactivate -e $argv
end

function bpdr
  cd $argv; git push origin dev:dev release:release; u;
end