class CreateRoomOccupationsView < ActiveRecord::Migration
    def up
      self.connection.execute %Q(
        CREATE VIEW `v_room_occupations_ordered` AS (
          SELECT 
            `t1`.`id` AS `id`,
            `t1`.`booking_id` AS `booking_id`,
            `t1`.`start_at` AS `start_at`,
            `t1`.`end_at` AS `end_at`,`t1`.
            `days` AS `days`,
            `t1`.`created_at` AS `created_at`,
            `t1`.`updated_at` AS `updated_at`,
            `t1`.`room_id` AS `room_id`,
            `t1`.`visit_id` AS `visit_id` 
          FROM `room_occupations` `t1` 
          ORDER BY `t1`.`room_id`,`t1`.`start_at`
        );
      )
    end

    def down
      self.connection.execute "DROP VIEW IF EXISTS v_room_occupations_ordered;"
    end
end
