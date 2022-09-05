# frozen_string_literal: true
# typed: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup

require "sorbet-runtime"

module WhatsappSdk
  class << self
    extend T::Sig

    sig { returns(Configuration) }
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
