module Vidego
  
  class Info
    
    def initialize(file_name)
      @info = `ffmpeg -i #{file_name} 2>&1`
    end
    
    def video
      @video ||= /Stream\s*(.*?)[,|:|\(|\[].*?\s*Video:\s*(.*?),\s*(.*?),\s*(\d*)x(\d*)/.match(@info)[2]
    end
    
    def audio
      @audio ||= /Stream\s*(.*?)[,|:|\(|\[].*?\s*Audio:\s*(.*?),\s*([0-9\.]*) (\w*),\s*([a-zA-Z:]*)/.match(@info)[2]
    end
    
    def iso?
      @iso ||= (/major_brand.+: (\S+)/.match(@info)[1] == 'isom')
    end
    
  end
  
end
