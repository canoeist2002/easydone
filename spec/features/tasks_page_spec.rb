# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "tasks pages" do
  let(:user) { FactoryGirl.create(:user) }
  
  before do
    visit new_user_session_path
    fill_in '邮箱地址', with: user.email
    fill_in '密码', with: user.password
    click_button '登录'
  end

  it "visit user index page" do

    visit lists_path

    expect(page).to have_selector('h3', text: user.name)

  end

end