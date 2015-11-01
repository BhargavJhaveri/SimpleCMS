class AdminUser < ActiveRecord::Base
  # Configure a different table had this Class name were User.
  # Initially the table name was set to users and then,
  # in the alter user, it was changed to alter_user.
  # So, in such kind of scenario, if we follow the rails convention,
  # it has to be changed to AdminUser. When this cannot be changed,
  # the mapping shown below has to be used.

  # self.table_name = "admin_users"
end
