import psycopg2

def create_db(conn):
    cur.execute("""
    drop table Phone;
    drop table Client;
    """)
    cur.execute("""
    CREATE TABLE IF NOT EXISTS Client (
        id SERIAL primary KEY,
        first_name VARCHAR(80) NOT NULL,
        last_name VARCHAR(80) NOT NULL,
        email VARCHAR(80) check (email like '%@%.%')
    );
    """)
    cur.execute("""
    create table if not exists Phone (
        id SERIAL primary KEY,
        client_id integer not null references Client(id) on delete cascade,
        phone VARCHAR(20)
    );
    """)
    conn.commit()
    pass

def add_client(conn, first_name, last_name, email):
    cur.execute("""
    INSERT INTO Client(first_name, last_name, email) values (%s, %s, %s) returning id, first_name, last_name, email;
    """, (first_name, last_name, email))
    # conn.commit()
    print(cur.fetchall())
    pass

def add_phone(conn, client_id, phone):
    cur.execute("""
    INSERT INTO Phone(client_id, phone) values (%s, %s) returning id, client_id, phone;
    """, (client_id, phone))
    # conn.commit()
    print(cur.fetchall())
    pass

def change_client(conn, client_id, first_name, last_name, email):
    cur.execute("""
    update Client
    set first_name = %s, last_name = %s, email = %s
    where id = %s;
    """, (first_name, last_name, email, client_id))
    conn.commit()
    pass

def delete_phone(conn, phone):
    cur.execute("""
    delete from Phone
    where phone = %s;
    """, (phone,))
    conn.commit()
    pass

def delete_client(conn, id):
    cur.execute("""
    delete from Client
    where id = %s returning id, first_name, last_name, email ;
    """, (id,))
    conn.commit()
    # print(cur.fetchall())
    pass

def find_client(conn, first_name, last_name, email, phone):
    cur.execute("""
    select first_name, last_name, email from client
    join Phone on client.id = phone.client_id
    where first_name = %s or last_name = %s or email = %s or phone = %s;
    """, (first_name, last_name, email, phone))
    print(cur.fetchall())
    pass


with psycopg2.connect(database="clients_db", user="postgres", password="postgres") as conn:
    cur = conn.cursor()
    create_db(conn)
    add_client(conn, 'Serg', 'Sergeev', 'Serg@sergeev.ru')
    add_client(conn, 'Ivan', 'Ivanov', 'Ivan@ivanov.ru')
    add_client(conn, 'Petr', 'Petrov', 'Petr@petrov.ru')
    add_phone(conn, 1, '+79111111111')
    add_phone(conn, 2, '+79222222222')
    add_phone(conn, 3, '+79333333333')
    add_phone(conn, 3, '+79444444444')
    change_client(conn, 1,'Sidor', 'Sidorov', 'sidor@sidorov.ru')
    delete_phone(conn, '+79444444444')
    delete_client(conn, 2)
    find_client(conn, 'Sidor', None, None, None)
    pass

conn.close()