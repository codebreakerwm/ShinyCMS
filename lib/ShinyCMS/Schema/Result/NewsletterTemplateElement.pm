package ShinyCMS::Schema::Result::NewsletterTemplateElement;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp", "EncodedColumn");

=head1 NAME

ShinyCMS::Schema::Result::NewsletterTemplateElement

=cut

__PACKAGE__->table("newsletter_template_element");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 template

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 type

  data_type: 'varchar'
  default_value: 'Short Text'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "template",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "type",
  {
    data_type => "varchar",
    default_value => "Short Text",
    is_nullable => 0,
    size => 20,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 template

Type: belongs_to

Related object: L<ShinyCMS::Schema::Result::NewsletterTemplate>

=cut

__PACKAGE__->belongs_to(
  "template",
  "ShinyCMS::Schema::Result::NewsletterTemplate",
  { id => "template" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07001 @ 2010-11-02 14:23:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WEJ8FOEoVtDAvoPWxY6V1g


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;