root = exports ? this

root.mmtct =
  add_script: ( id, url, http="http://", https="https://" ) ->
    prefix = http
    prefix = https if "https:" == document.location.protocol
    tag = document.getElementsByTagName( "script" )[ 0 ]
    if document.getElementById( id )
      return
    js = document.createElement( "script" )
    js.id = id
    js.src = "#{ prefix }#{ url }"
    tag.parentNode.insertBefore( js, tag )
