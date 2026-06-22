CREATE TABLE IF NOT EXISTS employees (
 emp_id TEXT PRIMARY KEY,
 emp_name TEXT NOT NULL,
 employee_data JSONB
);

CREATE TABLE IF NOT EXISTS ticket_reconciliation (
 emp_id TEXT PRIMARY KEY,
 emp_name TEXT,
 ticket_issued BOOLEAN DEFAULT FALSE,
 issued_by TEXT,
 issued_time TIMESTAMPTZ,
 present_count INTEGER DEFAULT 0,
 present_members TEXT
);