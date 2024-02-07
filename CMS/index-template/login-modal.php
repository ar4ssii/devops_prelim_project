<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">Login</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="config/user_login.php" method="post">
                <div class="modal-body">
                    <label for="">Username:</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" name="username" placeholder="Enter your username" id="" required>
                    </div>
                    <label for="">Password:</label>
                    <div class="input-group mb-2">
                        <input type="password" class="form-control" name="password" placeholder="Enter your password" id="" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>