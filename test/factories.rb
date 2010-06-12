# TODO

Factory.sequence :email do |n|
  "person#{n}@example.com"
end

Factory.define :user do |f|
  f.email { Factory.next(:email) }
  f.password "password"
end
