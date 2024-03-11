local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-serializer') {
  settings+: {
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    name: "Eclipse Serializer",
    readers_can_create_discussions: true,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  secrets+: [
    orgs.newOrgSecret('ORG_GPG_PASSPHRASE') {
      value: "********",
    },
    orgs.newOrgSecret('ORG_GPG_PRIVATE_KEY') {
      value: "********",
    },
    orgs.newOrgSecret('ORG_OSSRH_PASSWORD') {
      value: "********",
    },
    orgs.newOrgSecret('ORG_OSSRH_USERNAME') {
      value: "********",
    },
  ],
  _repositories+:: [
    orgs.newRepo('serializer') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Serializer project",
      has_discussions: true,
      homepage: "",
      topics+: [
        "java",
        "object-graph",
        "security",
        "serializer"
      ],
      web_commit_signoff_required: false,
    },
  ],
}
