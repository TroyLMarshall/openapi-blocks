# frozen_string_literal: true

require "openapi/blocks/version"
require "i18n"

I18n.load_path += Dir[File.join(__dir__, "blocks", "locales", "**/*.yml")]
I18n.config.available_locales = %i[en] # [en de fr fr-CA es es-MX]
I18n.reload! if I18n.backend.initialized?

# Namespace for classes and modules that handle serving OpenAPI documentation
#
# @author Troy L. Marshall
# @since 0.0.1
module Openapi
  # Namespace for classes and modules that handle documentation blocks
  #
  # @author Troy L. Marshall
  # @since 0.0.1
  module Blocks
    class Error < StandardError; end
    class DeclarationError < Error; end

    def self.openapi(document)
      raise DeclarationError, I18n.t(:root_undeclared, scope: %i[errors declarations])
    end
  end
end
