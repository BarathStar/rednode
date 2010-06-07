require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'stringio'

describe "Rednodejs" do
  def node(main_js)
    begin
      Rednodejs::Context.new.run(main_js)
    rescue V8::JavascriptError => e
      e.backtrace << "*** Here goes the Javascript trace ***"
      e.backtrace << e.javascript_stacktrace
      raise e
    end
  end

  context 'simple' do
    [
      'test-assert',
      # 'test-buffer',
      # 'test-byte-length',
      # 'test-c-ares',
      'test-chdir',
      # 'test-child-process-buffering',
      # 'test-child-process-env',
      # 'test-child-process-exit-code',
      # 'test-child-process-ipc',
      # 'test-child-process-kill',
      # 'test-child-process-stdin',
      # 'test-child-process-stdout-flush',
      # 'test-crypto',
      # 'test-delayed-require',
      # 'test-eio-race',
      # 'test-eio-race2',
      # 'test-eio-race4',
      # 'test-error-reporting',
      # 'test-eval-cx',
      # 'test-event-emitter-add-listeners',
      # 'test-event-emitter-modify-in-emit',
      # 'test-event-emitter-remove-listeners',
      # 'test-exception-handler',
      # 'test-exec',
      # 'test-file-read-noexist',
      # 'test-file-read-stream',
      # 'test-file-write-stream',
      # 'test-fs-chmod',
      # 'test-fs-error-messages',
      # 'test-fs-fsync',
      # 'test-fs-read-buffer',
      # 'test-fs-read',
      # 'test-fs-readfile-empty',
      # 'test-fs-realpath',
      # 'test-fs-stat',
      # 'test-fs-symlink',
      # 'test-fs-write-buffer',
      # 'test-fs-write-sync',
      # 'test-fs-write',
      # 'test-http-1.0',
      # 'test-http-304',
      # 'test-http-cat',
      # 'test-http-chunked',
      # 'test-http-client-race-2',
      # 'test-http-client-race',
      # 'test-http-client-upload',
      # 'test-http-eof-on-connect',
      # 'test-http-exceptions',
      # 'test-http-full-response',
      # 'test-http-malformed-request',
      # 'test-http-parser',
      # 'test-http-proxy',
      # 'test-http-server',
      # 'test-http-set-timeout',
      # 'test-http-tls',
      # 'test-http-upgrade',
      # 'test-http-upgrade2',
      # 'test-http-wget',
      # 'test-http',
      # 'test-ini',
      # 'test-memory-usage',
      # 'test-mkdir-rmdir',
      # 'test-module-loading',
      # 'test-net-pingpong',
      # 'test-next-tick-ordering',
      # 'test-next-tick',
      'test-path',
      # 'test-pipe-head',
      # 'test-querystring',
      # 'test-readdir',
      # 'test-regression-object-prototype',
      # 'test-repl',
      # 'test-script-new',
      # 'test-script-static-new',
      # 'test-script-static-this',
      # 'test-script-this',
      # 'test-signal-handler',
      # 'test-signal-unregister',
      # 'test-stdin-from-file',
      # 'test-stdout-to-file',
      # 'test-sync-fileread',
      'test-sys',
      # 'test-tcp-binary',
      # 'test-tcp-keepalive',
      # 'test-tcp-reconnect',
      # 'test-tcp-tls',
      # 'test-umask',
      'test-url',
      # 'test-utf8-decoder',
      'test-utf8-scripts'
    ].each do |test|
      it "should run node's simple/#{test}.js'" do
        node("#{Rednodejs::NODELIB}/test/simple/#{test}.js")
      end
    end
  end
end
