require 'ffi'

module FastCalculator
  extend FFI::Library
  ext = RbConfig::CONFIG['host_os'] =~ /darwin/ ? :dylib : :so
  ffi_lib "calculator/target/release/libcalculator.#{ext}"
  attach_function :plus, [:double, :double], :double
end

