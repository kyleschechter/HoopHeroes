FactoryBot.define do
  factory :team do
    id 1
    user { build(:user, email: "mario@mario.com", encrypted_password: "mario123") }
    name "Super Mario"
    slogan "It's a me!"
    image_url "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ed991cf4-7c8c-4530-b6ba-a3abf3ab2eae/dcocdz8-76634030-0ccc-4be0-80a5-f952708676f2.png/v1/fill/w_1280,h_1383,strp/super_mario__sm64_mario_2d_by_joshuat1306_dcocdz8-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMzgzIiwicGF0aCI6IlwvZlwvZWQ5OTFjZjQtN2M4Yy00NTMwLWI2YmEtYTNhYmYzYWIyZWFlXC9kY29jZHo4LTc2NjM0MDMwLTBjY2MtNGJlMC04MGE1LWY5NTI3MDg2NzZmMi5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.VclaVllG8MF1ca9WvUXMPgH9nErAMEybERRysMpsG0Q"
  end
end