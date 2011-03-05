require 'librarian/support/abstract_method'

module Librarian
  module Helpers
    module Debug

      include Support::AbstractMethod

      abstract_method :root_module

    private

      def relative_path_to(path)
        root_module.project_relative_path_to(path)
      end

      def debug
        if root_module.ui
          root_module.ui.debug { "[Librarian] #{yield}" }
        end
      end

    end
  end
end