<?php
class DatabaseSeeder extends Seeder {

    public function run()
    {
        DB::table('levels')->delete();
        
        $level1 = Level::create(
            array(
                'level'                 => '1',
                'current_exp'           => '0',
                'max_exp_to_next_level' => '100'
            )
        );
        
        $level2 = Level::create(
            array(
                'level'                 => '2',
                'current_exp'           => '101',
                'max_exp_to_next_level' => '250'
            )
        );
        
        $level3 = Level::create(
            array(
                'level'                 => '2',
                'current_exp'           => '251',
                'max_exp_to_next_level' => '450'
            )
        );
        
        $this->command->info('Level table seeded!');
        
        
        DB::table('users')->delete();
        
        $user1 = User::create(
            array(
                'email'                 => 'vuquangson1610@gmail.com',
                'name'                  => 'quang son',
                'password'              => '$2y$10$05PFShgW1pPx6w/jOYO25ucpGiYQ4Qxhu3e1qmg11c3Jo3mHR0cZ.',
                'phone_number'          => '0982413281',
                'stars_number'          => '500',
                'number_of_free_roll'   => '1',
                'level_id'              => $level1->getKey()
            )
        );
        
        $user2 = User::create(
            array(
                'email'                 => 'phuocdh53@gmail.com',
                'name'                  => 'phuoc doan',
                'password'              => '$2y$10$05PFShgW1pPx6w/jOYO25ucpGiYQ4Qxhu3e1qmg11c3Jo3mHR0cZ.',
                'phone_number'          => '0982411234',
                'stars_number'          => '1500',
                'number_of_free_roll'   => '2',
                'level_id'              => $level2->getKey()
            )
        );
        
        $this->command->info('User table seeded!');
    }

}
