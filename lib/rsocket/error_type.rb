module RSocket

  # https://github.com/rsocket/rsocket/blob/master/Protocol.md#error-codes
  module ErrorType
    APPLICATION_ERROR = 0x00000201
    CANCELED = 0x00000203
    CONNECTION_CLOSE = 0x00000102
    CONNECTION_ERROR = 0x00000101
    INVALID = 0x00000204
    INVALID_SETUP = 0x00000001
    REJECTED = 0x00000202
    REJECTED_RESUME = 0x00000004
    REJECTED_SETUP = 0x00000003
    RESERVED = 0x00000000
    RESERVED_FOR_EXTENSION = 0xFFFFFFFF
    UNSUPPORTED_SETUP = 0x00000002
  end

  class RSocketException< Exception
    attr_accessor :code, :message

    def initialize(code, message)
      @code = code
      @message = message
    end

  end


end