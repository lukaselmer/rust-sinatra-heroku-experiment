require 'ffi'

module FastCalculator
  extend FFI::Library
  ffi_lib 'calculator/target/release/libcalculator.dylib'
  attach_function :plus, [:double, :double], :double
end

