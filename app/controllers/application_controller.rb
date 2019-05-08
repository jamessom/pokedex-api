class ApplicationController < ActionController::API
  include ExceptionHandler
  include PaginationMetaGenerator

  def render(options = {})
    if serializer && ( !options[:json].is_a?(Hash) || options[:json][:errors].nil? )
      options[:json] = serializer.new(*options[:json])
    end
    super(options)
  end

  private

    def per_page
      (params[:per_page] || DEFAULT_PER_PAGE).to_i
    end

    def current_page
      (params[:page] || DEFAULT_PAGE).to_i
    end

    def serializer
      # Should be implemented on subclasses
    end
end
