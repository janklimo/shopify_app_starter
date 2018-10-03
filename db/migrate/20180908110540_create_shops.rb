class CreateShops < ActiveRecord::Migration[5.2]
  def up
    enable_extension "pgcrypto"

    create_table :shops, id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.string :shopify_domain, null: false
      t.string :shopify_token, null: false
      t.timestamps
    end

    add_index :shops, :shopify_domain, unique: true
  end

  def down
    drop_table :shops
  end
end
