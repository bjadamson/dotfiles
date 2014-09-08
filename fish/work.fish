set -x PATH /apollo/env/SDETools/bin $PATH
function bb
  brazil-build
end

function bbap
  bb
  brazil-build apollo-pkg
end

function bbc
  brazil-build clean
end

function bbg
  brazil-build gdb
end

function bbt
  brazil-build test
end

function bbs
  brazil-build server
end

function bba
  bbc
  bb
  bbt
end

function bbr
  brazil-build release
end

function bbtia
  brazil-build test-integration-assert
end

function bbptc
  brazil-build print-testrun-classpath
end

function ssh_ba
  ssh badamson.desktop.amazon.com
end

function btpt
  /apollo/env/BrazilThirdPartyTool/bin/brazil-third-party-tool
end

function kp
  kinit -f
end
