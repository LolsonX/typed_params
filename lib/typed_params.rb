# typed: true

require "action_controller"
require_relative "actionpack/lib/action_controller/base"
require_relative "typed_params/config"
require_relative "typed_params/version"
require_relative "typed_params/params_validator"
require_relative "typed_params/params"

module TypedParams
  class Error < StandardError; end
end
