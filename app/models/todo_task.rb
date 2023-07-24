class TodoTaskValidator < ActiveModel::Validator
  def validate(record)
    # description: required field
    record.errors.add(:description, "required") unless record.description.present?
    # reminder
    if record.reminder.present? && record.reminder < Date.today
      record.errors.add(:reminder, " must be in the future")
    end
    # dueby
    if record.dueby.present? && record.dueby < Date.today
      record.errors.add(:dueby, " must be in the future")
    end
    # reminder is before dueby
    if record.dueby.present? && record.reminder.present? && record.dueby < record.reminder
      record.errors.add(:reminder, " is after due date")
    end
  end
end

class TodoTask < ApplicationRecord
  validates_with TodoTaskValidator
  
  def isCurrent
    if self.username == Current.user.username
      return true
    end
    return false
  end
end
