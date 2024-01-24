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
end
