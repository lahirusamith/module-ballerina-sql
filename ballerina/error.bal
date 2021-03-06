// Copyright (c) 2020 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

# Represents the properties belonging to an `sql:BatchExecuteError`.
#
# + errorCode - SQL error code
# + sqlState - SQL state
# + executionResults - Result of execution of commands
public type BatchExecuteErrorDetail record {
    int errorCode;
    string? sqlState;
    ExecutionResult[] executionResults;
};

# Represents the properties belonging to an `sql:DatabaseError`.
#
# + errorCode - SQL error code
# + sqlState - SQL state
public type DatabaseErrorDetail record {
    int errorCode;
    string? sqlState;
};

//Level 1
# Defines the common error type for the module.
public type Error distinct error;

//Level 2
# Represents an error caused by an issue related to database accessibility, erroneous queries, constraint violations,
# database resource clean-up, and other similar scenarios.
public type DatabaseError distinct Error & error<DatabaseErrorDetail>;

# Represents an error occurred when a batch execution is running.
public type BatchExecuteError distinct Error & error<BatchExecuteErrorDetail>;

# Represents an error originating from application-level causes.
public type ApplicationError distinct Error;
