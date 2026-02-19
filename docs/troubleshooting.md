## User requires NOPASSWD sudo

**Symptom:** `running k3s server prereqs: cannot run cmd, see error logs`

**Cause:** Provider executes commands via SSH with `sudo` and requires passwordless access.

**Fix:** Add to `/etc/sudoers` (via `visudo`) as the last line:
user_name ALL=(ALL) NOPASSWD: ALL
