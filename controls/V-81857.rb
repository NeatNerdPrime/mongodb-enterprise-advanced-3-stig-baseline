  control "V-81857" do
  title "The role(s)/group(s) used to modify database structure (including but
  not necessarily limited to tables, indexes, storage, etc.) and logic modules
  (stored procedures, functions, triggers, links to software external to MongoDB,
  etc.) must be restricted to authorized users."
  desc  "If MongoDB were to allow any user to make changes to database
  structure or logic, then those changes might be implemented without undergoing
  the appropriate testing and approvals that are part of a robust change
  management process.

      Accordingly, only qualified and authorized individuals must be allowed to
  obtain access to information system components for purposes of initiating
  changes, including upgrades and modifications.

      Unmanaged changes that occur to the database software libraries or
  configuration can lead to unauthorized or compromised installations.
  "
  
  desc "check", "Run the following command to get the roles from a MongoDB
  database.

  For each database in MongoDB:

  use <database>
  db.getRoles(
  {
  rolesInfo: 1,
  showPrivileges:true,
  showBuiltinRoles: true
  }
  )

  Run the following command to the roles assigned to users:

  use admin
  db.system.users.find()

  Analyze the output and if any roles or users have unauthorized access, this is
  a finding."
  desc "fix", "Use the following commands to remove unauthorized access to a
  MongoDB database.

  db.revokePrivilegesFromRole()
  db. revokeRolesFromUser()

  MongoDB commands for role management can be found here:
  https://docs.mongodb.com/v3.4/reference/method/js-role-management/"

  impact 0.5
  tag "severity": "medium"
  tag "gtitle": "SRG-APP-000133-DB-000362"
  tag "gid": "V-81857"
  tag "rid": "SV-96571r1_rule"
  tag "stig_id": "MD3X-00-000270"
  tag "fix_id": "F-88707r1_fix"
  tag "cci": ["CCI-001499"]
  tag "nist": ["CM-5 (6)"]
  tag "documentable": false
  tag "severity_override_guidance": false

  describe 'A manual review is required to determine if any roles or users have unauthorized access' do
    skip 'A manual review is required to determine if any roles or users have unauthorized access'
  end
end
