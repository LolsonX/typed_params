module ActionController
  class Base
    def typed_params(options = {})
      TypedParams::ParamsValidator.validate!(options)
      TypedParams::Params.new(params, options)
    end
  end
end
