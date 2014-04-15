class CreateRoomOccupationsView2 < ActiveRecord::Migration
  def up
      self.connection.execute %Q(
        CREATE VIEW `v_occupied_rooms` AS (
            SELECT
              `t1`.`id` AS `id`,
              `t1`.`room_id` AS `room_id`,
              `t1`.`booking_id` AS `booking_id`,
              `t1`.`visit_id` AS `visit_id`,
              `t1`.`start_at` AS `start_at`,
              `t1`.`end_at` AS `end_at`,
              `t2`.`start_at` AS `next_start_at`,
              `t1`.`created_at` AS `created_at`,
              `t1`.`updated_at` AS `updated_at`
            FROM (
              `room_occupations` `t1` LEFT JOIN `v_room_occupations_ordered` `t2` 
                on(
                  `t2`.`room_id` = `t1`.`room_id` and `t2`.`start_at` >= `t1`.`end_at`
                )
            )
            GROUP BY `t1`.`id` 
            ORDER BY `t1`.`room_id`,`t1`.`end_at`,`t1`.`start_at`
          );
        )
    end

    def down
      self.connection.execute "DROP VIEW IF EXISTS v_occupied_rooms;"
    end
end
