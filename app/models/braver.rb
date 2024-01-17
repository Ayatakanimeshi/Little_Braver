class Braver < ApplicationRecord
  belongs_to :user
  has_one :parameter, dependent: :destroy
  has_many :equipments, dependent: :destroy

  after_initialize :init

  PERSONALITIES = {
    '勇敢' => { atk: 10, def: 5, spd: 5, hp: 100, int: 3, mp: 10 },
    '賢い' => { atk: 5, def: 5, spd: 5, hp: 100, int: 10, mp: 15 },
    # 他の性格とパラメータ
  }

  def init
    self.parameter ||= build_parameter(PERSONALITIES[personality])
  end
end
