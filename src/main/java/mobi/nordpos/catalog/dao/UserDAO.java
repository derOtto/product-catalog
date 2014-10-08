/**
 * Copyright (c) 2012-2014 Nord Trading Network.
 */
package mobi.nordpos.catalog.dao;

import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;
import mobi.nordpos.catalog.model.User;

/**
 * @author Andrey Svininykh <svininykh@gmail.com>
 */
public interface UserDAO extends Dao<User, String> {

    public User read(String userName) throws SQLException;

}
