*****************************************************************
1. Support has_one associations in BlocRecord.

-----------------
Answer:
-----------------

  def has_one(association)
    define_method(association) do
      row = self.class.connection.get_first_row <<-SQL
        SELECT *
        FROM #{association.to_s.singularize}
        WHERE #{self.class.table}_id = #{self.id}
      SQL

      class_name = association.to_s.classify.constantize

      if row
        class_name.new(Hash[class_name.columns.zip(row)])
      end
    end
  end

*****************************************************************
2. Currently, BlocRecord only supports SQLite, but there's no reason
it couldn't support a different database platform. Support PostgreSQL
in addition to SQLite using the pg gem.

Allow developers to decide which platform to use by passing an extra
argument to connect_to:

 BlocRecord.connect_to("db/address_bloc.db", :pg)
 BlocRecord.connect_to("db/address_bloc.db", :sqlite3)

Aside from this, no other changes should be made in AddressBloc. All other
changes should be made in BlocRecord.

-----------------
Answer:
-----------------

  module BlocRecordcd 
    def self.connect_to(filename, platform)
      @database_filename = filename
      @platform = platform
    end

    def self.database_filename
      @database_filename
    end

    def self.platform
      @platform
    end
  end