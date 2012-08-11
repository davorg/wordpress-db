use utf8;
package WordPress::DB::Result::WpTerm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

WordPress::DB::Result::WpTerm

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<wp_terms>

=cut

__PACKAGE__->table("wp_terms");

=head1 ACCESSORS

=head2 term_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 slug

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 term_group

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "term_id",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "slug",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "term_group",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</term_id>

=back

=cut

__PACKAGE__->set_primary_key("term_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<slug>

=over 4

=item * L</slug>

=back

=cut

__PACKAGE__->add_unique_constraint("slug", ["slug"]);


# Created by DBIx::Class::Schema::Loader v0.07015 @ 2012-08-11 14:43:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bAp2w8EelXeK5QlhBHd9CQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
