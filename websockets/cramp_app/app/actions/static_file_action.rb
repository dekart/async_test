class StaticFileAction < Cramp::Action
  def start
    render File.read(File.join(CrampApp::Application.root, 'public', params[:file]))
    finish
  end
end
