module Jekyll
  class SearchDataGenerator < Generator
    safe true
    priority :low
    
    def generate(site)
      search_data = []
      
      # Add all pages
      site.pages.each do |page|
        next if page.url =~ /\.(xml|json|css|js|txt)$/ || page.data['exclude_from_search']
        
        content = page.content.gsub(/<[^>]*>/, '').gsub(/\s+/, ' ').strip
        search_data << {
          'title' => page.data['title'] || File.basename(page.url, '.*').gsub(/[-_]/, ' ').capitalize,
          'url' => page.url,
          'content' => content,
          'excerpt' => content[0..150] + (content.length > 150 ? '...' : '')
        }
      end
      
      # Add all posts
      site.posts.docs.each do |post|
        content = post.content.gsub(/<[^>]*>/, '').gsub(/\s+/, ' ').strip
        search_data << {
          'title' => post.data['title'],
          'url' => post.url,
          'content' => content,
          'excerpt' => content[0..150] + (content.length > 150 ? '...' : ''),
          'tags' => Array(post.data['tags']).join(', '),
          'categories' => Array(post.data['categories']).join(', ')
        }
      end
      
      # Create the JSON file
      search_page = PageWithoutAFile.new(site, site.source, '', 'search-data.json')
      search_page.content = JSON.pretty_generate(search_data)
      search_page.data['layout'] = nil
      site.pages << search_page
    end
  end
end
