class Braver < ApplicationRecord
  has_one :parameter, dependent: :destroy

  enum personality: { 熱血漢: 0, 冷静沈着: 1, 自由奔放: 2, 仲間思い: 3 }

  after_initialize :init

  PERSONALITIES = {
    '熱血漢' => { atk: 10, def: 5, spd: 5, hp: 100, int: 3, mp: 10 },
    '冷静沈着' => { atk: 7, def: 7, spd: 5, hp: 100, int: 5, mp: 10 },
    '自由奔放' => { atk: 6, def: 4, spd: 8, hp: 100, int: 4, mp: 12 },
    '仲間思い' => { atk: 5, def: 6, spd: 6, hp: 100, int: 7, mp: 15 }
  }

  def init
    self.parameter ||= build_parameter(PERSONALITIES[personality])
  end

  def rank
    return "F" unless parameter # parameter が nil の場合は "F" を返す

    score = parameter.total_score

    case score
    when 6000..Float::INFINITY
      "GOD"
    when 5501..6000
      "SSS"
    when 5001..5500
      "SS"
    when 4501..5000
      "S"
    when 4001..4500
      "A"
    when 3501..4000
      "B"
    when 3001..3500
      "C"
    when 2501..3000
      "D"
    when 2001..2500
      "E"
    else
      "F"
    end
  end

  def determine_job
    return "村人" unless parameter # parameter が nil の場合は "村人" を返す

    case rank
    when "GOD"
      "神"
    when "SSS", "SS", "S"
      "勇者"
    else
      parameter.highest_parameter_job
    end
  end
end
