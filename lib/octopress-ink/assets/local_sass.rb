module Octopress
  module Ink
    module Assets
      class LocalSass < LocalStylesheet
        def read
          compile
        end

        def content
          file.content
        end

        def ext
          file.ext
        end

        def path
          File.join(file.site.source, file.path)
        end

        def compile
          AssetPipeline.compile_sass(self)
        end
      end
    end
  end
end

