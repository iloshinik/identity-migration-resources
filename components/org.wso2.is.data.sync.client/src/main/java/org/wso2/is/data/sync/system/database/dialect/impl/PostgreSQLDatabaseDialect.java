/*
 * Copyright (c) 2019, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.wso2.is.data.sync.system.database.dialect.impl;

import org.wso2.is.data.sync.system.database.dialect.Table;
import org.wso2.is.data.sync.system.database.dialect.Trigger;
import org.wso2.is.data.sync.system.exception.SyncClientException;

import java.util.List;

/**
 * Produces PosgreSQL specific database dialects.
 */
public class PostgreSQLDatabaseDialect extends ANSIDatabaseDialect {


    @Override
    public List<String> generateCreateTrigger(Trigger trigger) throws SyncClientException {

        return null;
    }

    @Override
    public List<String> generateCreateTable(Table table) throws SyncClientException {

        return null;
    }

    @Override
    public List<String> generateDropTrigger(String name) throws SyncClientException {

        return null;
    }

    @Override
    public List<String> generateDropTable(String name) throws SyncClientException {

        return null;
    }
}
