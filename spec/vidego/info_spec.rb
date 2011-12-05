require 'spec_helper'

describe Vidego::Info do

  let(:test_dir) { File.expand_path(File.join(File.dirname(__FILE__), "/../test_files")) }
  let(:mp4_h264_aac) { "#{test_dir}/mp4_h264_aac.mp4" }
  let(:m4v_h264_aac) { "#{test_dir}/m4v_h264_aac.m4v" }

  context 'when reading formats' do
      
    let(:info) {Vidego::Info.new(mp4_h264_aac)}

    specify { info.video.should match('h264') }
    specify { info.audio.should match('aac') }
    specify { info.iso?.should be_true }
      
    context "when data is NOT in an mp4 baseline container" do
      let(:non_iso) { Vidego::Info.new(m4v_h264_aac)}
      specify { non_iso.iso?.should be_false }
    end
    
  end

end