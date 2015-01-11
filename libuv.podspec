# -*- coding: utf-8 -*-
Pod::Spec.new do |s|
  s.name         = 'libuv'
  s.version      = '1.2.1'
  s.summary      = 'A community-maintained release of libuv for Cocoa projects '
  s.description  = <<-DESC
    libuv is a multi-platform support library with a focus on asynchronous I/O.
    This release tracks the upstream project at https://github.com/libuv/libuv.
                   DESC
  s.homepage     = 'http://libuv.org'
  s.license      = { :type => 'Node', :file => 'LICENSE' }
  s.authors      = { :file => 'AUTHORS' }
  s.platform     = :ios, '7.0'
  s.requires_arc = false
  s.source       = { :git => 'https://github.com/ide/libuv.git', :tag => "v#{s.version.to_s}-cocoapod" }
  s.public_header_files = 'include/*.h'
  s.source_files  = [
    'include/*.h',
    'src/**/*.{c,h}',
  ]
  s.exclude_files = [
    'include/*msvc2008*.h',
    'include/android-*.h',
    'include/pthread-fixes.h',
    'include/uv-{aix,bsd,linux,sunos,win}*.h',
    'src/unix/*{aix,android,bsd,linux,sunos}*.c',
    'src/unix/pthread-fixes.c',
    'src/win',
  ]
end
