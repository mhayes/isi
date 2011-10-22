# =require plupload
# =require plupload.html5

uploadPhotos =
  init: ->
    uploader = new plupload.Uploader
      runtimes: "html5"
      browse_button: "addPhotos"
      file_data_name: "Filedata"
      multipart: true
      multipart_params: ISI.multipart_params
      # multipart_params:
      #   '#{request_forgery_protection_token}': '#{form_authenticity_token}',
      #   '#{request.session_options[:key]}': '#{request.session_options[:id]}'
      url: ISI.upload_url

    uploader.init()
    
    uploader.bind "QueueChanged", ->
      uploader.start()

    uploader.bind "FileUploaded", ->
      console.info "File was uploaded ..."

    uploader.bind "UploadComplete", ->
      location.reload(true)

jQuery ->
  if ISI.upload_url?
    uploadPhotos.init()