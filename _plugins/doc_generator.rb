# Something to comeback to, it would be nice to generate
# doc and desktop pages from content in the _content folder
# however it appears github pages doesn't support custom 
# generators. So will have to  think of something else.
#
module DimeDocs
    class DocGenerator < Jekyll::Generator
        safe true

        def generate(site)
            puts "hello"
            # Go through all pages
            site.pages.each{  |page|

                puts page.name
                # If a page originates from the _content folder
                if page.path.includes?"_content"
                    puts page.name
                end
            }

        end
    end
end