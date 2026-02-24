CREATE TABLE test (
  id INT
);
INSERT INTO test (id) VALUES (1);
INSERT INTO test (id) VALUES (2);

CREATE TABLE episode_basic_results(
  episode_number INT, 
  time_taken DECIMAL, 
  accuracy DECIMAL,
  energy_consumed DECIMAL, 
  data_success INT,
  time_stamp DECIMAL 
);

INSERT INTO episode_basic_results (episode_number, time_taken, accuracy, energy_consumed, data_success, time_stamp) VALUES (1, 7.56, 80, 458.237, 90, 7.56);
INSERT INTO episode_basic_results (episode_number, time_taken, accuracy, energy_consumed, data_success, time_stamp) VALUES (2, 7.40, 78, 490.612, 83, 14.96);
INSERT INTO episode_basic_results (episode_number, time_taken, accuracy, energy_consumed, data_success, time_stamp) VALUES (3, 8, 75, 510.258, 80, 26.56);
INSERT INTO episode_basic_results (episode_number, time_taken, accuracy, energy_consumed, data_success, time_stamp) VALUES (4, 7, 85, 423.491, 91, 33.96);
INSERT INTO episode_basic_results (episode_number, time_taken, accuracy, energy_consumed, data_success, time_stamp) VALUES (5, 6.5, 86, 400.364, 88, 40.46);
INSERT INTO episode_basic_results (episode_number, time_taken, accuracy, energy_consumed, data_success, time_stamp) VALUES (6, 7, 87, 410.543, 90, 47.46);


SELECT * FROM test;

SELECT * FROM episode_basic_results WHERE accuracy > 78;