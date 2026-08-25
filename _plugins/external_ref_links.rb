require 'nokogiri'
require 'uri'

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.output_ext == '.html'
  next if doc.output.nil? || doc.output.empty?

  site_host = URI.parse(doc.site.config['url'].to_s).host rescue nil

  # Document.parse (documento completo) em vez de DocumentFragment.parse,
  # que corrompia doctype/html/head ao processar a página inteira.
  # Passamos 'UTF-8' explicitamente para o Nokogiri não injetar sozinho
  # um <meta http-equiv="Content-Type"> na hora de serializar.
  document = Nokogiri::HTML::Document.parse(doc.output, nil, 'UTF-8')
  changed = false

  document.css('a[href]').each do |a|
    href = a['href'].to_s
    next if href.empty?
    next unless href.start_with?('http://', 'https://')

    uri = begin
      URI.parse(href)
    rescue URI::InvalidURIError
      next
    end

    next if uri.host.nil?
    next if site_host && uri.host == site_host
    next if uri.host.end_with?('pedro.dalbo.me') # ajuste se tiver subdomínios seus

    params = URI.decode_www_form(uri.query || '')
    next if params.any? { |k, _| k == 'ref' }

    params << ['ref', 'pedro.dalbo.me']
    uri.query = URI.encode_www_form(params)
    a['href'] = uri.to_s
    changed = true
  end

  doc.output = document.to_html if changed
end