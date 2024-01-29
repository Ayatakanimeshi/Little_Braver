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
    # SSS, SS, S ランクは常に「ゆうしゃ」とする
    return "ゆうしゃ" if ["SSS", "SS", "S"].include?(rank)
    
    # それ以外のランクはParameterモデルで職業を決定
    parameter&.highest_parameter_job || "村人"
  end

  def determine_title
    job = determine_job # 職業を決定

    if ["SSS", "SS", "S"].include?(rank)
      "#{standard_title} #{job}" # SSS, SS, S ランクの場合の称号
    else
      "#{job_specific_title(job)} #{job}" # Aランク以下の場合の称号
    end
  end

  private

  def standard_title
    case rank
    when "SSS"
      "でんせつの"
    when "SS"
      "もうすぐせかいをすくう"
    when "S"
      "きのうたびにでた"
    end
  end

  def job_specific_title(job)
    case rank
    when "A"
      case job
      when "せんし" then "大陸の"
      when "まほうつかい" then "賢者の"
      when "そうりょ" then "守護者の"
      when "ぶとうか" then "守護者の"
      when "きし" then "守護者の"
      when "とうぞく" then "守護者の"
      end
    when "B"
      "地域の"
    when "C"
      "村の"
    when "D"
      "村の"
    when "E"
      "村の"
    when "F"
      "村の"
    else
      "一般的な"
    end
  end
end
