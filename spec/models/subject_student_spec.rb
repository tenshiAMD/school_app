require 'rails_helper'

RSpec.describe SubjectStudent, type: :model do
  describe 'db' do
    it { should have_db_column(:subject_id).of_type(:integer) }
    it { should have_db_column(:student_id).of_type(:integer) }

    it { should have_db_index(:subject_id) }
    it { should have_db_index(:student_id) }
  end

  describe 'validations' do
    subject { build(:subject_student) }

    it { should validate_presence_of(:subject_id) }
    it { should validate_presence_of(:student_id) }

    it { is_expected.to be_valid }
  end

  describe 'associations' do
    it { should belong_to(:subject) }
    it { should belong_to(:student) }
  end
end
