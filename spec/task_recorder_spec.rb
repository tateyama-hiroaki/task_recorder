require './lib/task_recorder'

RSpec.describe Recorder do
  it 'Recorderクラスのインスタンスが生成できるか' do
    Recorder.new
  end
end

RSpec.describe Recorder do
  describe '#start_time' do
    it '@start_time を参照できるか' do
      record = Recorder.new
      expect(record.start_time).to eq nil
    end
  end
  describe '#start_time=' do
    it '@start_time を変更できるか' do
      record = Recorder.new
      expect(record.start_time = nil).to eq nil
    end
  end
  describe '#end_time' do
    it '@end_time を参照できるか' do
      record = Recorder.new
      expect(record.end_time).to eq nil
    end
  end
  describe '#end_time=' do
    it '@end_time を変更できるか' do
      record = Recorder.new
      expect(record.end_time = nil).to eq nil
    end
  end
end

RSpec.describe Recorder do
  describe '#start_time_count' do
    it '開始時間のカウントができるか' do
      record = Recorder.new
      expect(record.start_time_count).to eq record.start_time
    end
  end
  describe '#end_time_count' do
    it '終了時間のカウントができるか' do
      record = Recorder.new
      expect(record.end_time_count).to eq record.end_time
    end
  end
end

RSpec.describe Recorder do
  describe '#date_count' do
    it '実施日のカウントができるか' do
      record = Recorder.new
      expect(record.date_count).to eq record.date
    end
  end
end

RSpec.describe Recorder do
  describe '#number' do
    it '種類の番号を参照できるか' do
      record = Recorder.new
      expect(record.number).to eq nil
    end
    describe '#number=' do
      it '種類の番号を "1" に変更できるか' do
        record = Recorder.new
        expect(record.number = 1).to eq 1
      end
      it '種類の番号を "2" に変更できるか' do
        record = Recorder.new
        expect(record.number = 2).to eq 2
      end
      it '種類の番号を "3" に変更できるか' do
        record = Recorder.new
        expect(record.number = 3).to eq 3
      end
    end
  end
end

RSpec.describe Recorder do
  describe '#comment' do
    it '内容を参照できるか' do
      record = Recorder.new
      expect(record.comment).to eq nil
    end
  end
  describe '#comment=' do
    it '内容を変更できるか' do
      record = Recorder.new
      expect(record.comment = 'Dockerの学習').to eq 'Dockerの学習'
    end
  end
end

RSpec.describe Recorder do
  describe '#kinds' do
    it '種類を参照できるか' do
      record = Recorder.new
      expect(record.kinds).to eq nil
    end
  end
  describe '#kinds_case' do
    it '種類の番号が "1" の場合はリーディングリストのブックマーク処理となるか' do
      record = Recorder.new
      record.number = 1
      expect(record.kinds_case).to eq 'リーディングリストのブックマーク処理'
    end
    it '種類の番号が "2" の場合はプログラミング学習となるか' do
      record = Recorder.new
      record.number = 2
      expect(record.kinds_case).to eq 'プログラミング学習'
    end
    it '種類の番号が "3" の場合は仕事となるか' do
      record = Recorder.new
      record.number = 3
      expect(record.kinds_case).to eq '仕事'
    end
  end
end

RSpec.describe Recorder do
  describe '#result_time' do
    it '時間は30であるか' do
      record = Recorder.new
      record.start_time_count
      record.end_time_count
      expect(record.result_time).to eq ((record.end_time - record.start_time)/60).round
    end
  end
end